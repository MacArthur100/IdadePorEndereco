//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

//Contrato que associa uma idade a cada endereço (carteira)
contract IdadePorEndereco {
    
    //Mapping: cada endereço tem uma idade associada
    mapping (address => uint256) private idades;

    //Função para o usuário registrar ou atualizar sua idade
    function registrarIdade(uint256 _idade) public {
        idades[msg.sender] = _idade;
    }

    //Função para consultar a idade da próprio endereço
    function minhaIdade() public view returns (uint256) {
        return idades[msg.sender];
    }
}